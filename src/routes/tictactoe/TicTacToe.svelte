<script lang="ts">
    const size = 3;

    type Player = 'X' | 'O'
    type Field =  Player | ' '
    type Winner = Field | 'Tie'


    const emptyBoard: Field[][] = Array.from({ length: size },
        () => Array.from({length: size}, () => ' ' )
    )
    let board = $state<Field[][]>(emptyBoard);

    const nextPlayer: Record<Player, Player> = {
        X: 'O',
        O: 'X',
    };
    let curPlayer = $state<Exclude<Field, ' '>>('X');

    let status = $derived(() => {  
        const winner = getWinner()
        switch (winner) {
            case ' ': return `It's ${curPlayer}'s Turn!`
            case 'Tie': return "It's a Tie!"
            default: return `${winner} won!`
        }
    })

    function chooseField(column: number, row: number) {
        var winner = getWinner()
        var gameOver = winner !== ' ';
        
        if (gameOver) resetBoard()
        if (board[column][row] === ' ' || gameOver) {
            board[column][row] = curPlayer;
            updateBoard()
            curPlayer = nextPlayer[curPlayer];
        }
        if (getWinner() !== ' ' ) curPlayer = 'X';
    }

    function getWinner(): Winner {
        for (let combination of getCombinations())
            if (allEqual(combination))
                return combination[0]
        if (board.every((column) => noneEmpty(column)))
            return 'Tie'
        return ' '
    }

    const resetBoard  = (): void => { board = emptyBoard }
    const updateBoard = (): void => { board = [...board] }
    const noneEmpty = (arr: Field[]): boolean => arr.every((value) => value !== ' ');
    const allEqual  = (arr: Field[]): boolean => arr.length > 0 && arr[0] !== ' ' && arr.every((v) => v === arr[0]);

    const getCombinations = (): Field[][] => {
        const rows = board[0].map((_, row) => board.map(col => col[row]));
        const columns = board.map(col => [...col]);
        const diags = [ board.map((col, i) => col[i]), board.map((col, i) => col[size - 1 - i])]

        return [...rows, ...columns, ...diags]
    }
</script>

<div class="main">
    <h1>{status()}</h1>
    <div class="board" style="--size: {size * size}rem">
        {#each board as column, columnIdx}
        <div class="column">
            {#each column as field, rowIdx}
            <button class="field" onclick={() => chooseField(columnIdx, rowIdx)}><span class={board[columnIdx][rowIdx]}> {field}</span></button>
            {/each}
        </div>
        {/each}
    </div>
</div>

<style>
    .main {
        display: flex;
        align-items: center;
        flex-direction: column;
    }

    .board {
        display: flex;
        justify-content: center;
        width: var(--size);
        margin: 2rem;
    }

    .field {
        display: flex;
        align-items: center;
        justify-content: center;
        font-family: var(--font);
        font-size: 3rem;
        font-weight: 1000;
        width: 4rem;
        height: 4rem;
        padding: 0.5rem;
        margin: 0rem;

        background: none;
        padding: 0;
        cursor: pointer;
        border: none;
    }

    .field .X {
        color: green;
    }

    .field .O {
        color: red
    }

    .field:not(:last-child) {
        border-bottom-style: solid;
        border-bottom-color: var(--primary-color);
    }

    .column:not(:last-child) .field {
        border-right-style: solid;
        border-right-color: var(--primary-color);
    }
</style>