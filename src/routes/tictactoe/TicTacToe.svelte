<script lang="ts">
    const size = 3;

    const emptyBoard = Array.from({ length: size }, () => Array.from({length: size}, () => " "))
    let board = $state(emptyBoard);
    let curPlayer = $state("X");
    let status = $derived(`Current Player: ${curPlayer}`);

    function chooseField(column: number, row: number) {
        var winner = getWinner()
        var gameOver = winner !== "";
        if (gameOver) resetBoard()
        if (board[column][row] === " " || gameOver) {
            board[column][row] = curPlayer;
            updateBoard()
            curPlayer = (curPlayer === "X") ? "O" : "X";
        }

        winner = getWinner()
        if (winner === "" ) return
        curPlayer = "X";
        status = winner === "tie" ? "Tie!" : `${winner} won!` 
    }

    function resetBoard(): void { board = emptyBoard }
    function updateBoard(): void { board = [...board] }

    function getWinner(): string {
        for (let combination of getCombinations())
            if (allEqual(combination))
                return combination[0]
        if (board.every((column) => noneEmpty(column)))
            return "tie"
        return ""
    }

    function noneEmpty(arr: string[]): boolean {
        return arr.every((value) => value !== " ");
    }

    function allEqual(arr: string[]): boolean {
        if (arr.length === 0) return true;
        const first = arr[0];
        if (first === " ") return false;
        return arr.every((value) => value === first);
    }

    function getCombinations(): string[][] {
        const rows = Array.from({length: size}, (_,row) => Array.from({length: size}, (_,column) => board[column][row]));
        const columns = Array.from({length: size}, (_,column) => Array.from({length: size}, (_,row) => board[column][row]));
        const diagTopLeft = Array.from({length: size}, (_,idx) => board[idx][idx]);
        const diagTopRight = Array.from({length: size}, (_,idx) => board[size-1-idx][idx]);

        return [...rows, ...columns, diagTopLeft, diagTopRight]
    }
</script>

<div class="main">
    <h1>{status}</h1>
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