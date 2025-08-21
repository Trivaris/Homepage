<style>
    ul {
        list-style: none;
    }

    .main {
        display: flex;
    }

    .sub-left {
        display: flex;
        width: 100%;
        flex-direction: column;
        justify-content: space-between;
    }
    .sub-right {
        display: flex;
        width: 100%;
        justify-content: center;
        align-content: center;
    }


    .welcome-text {
        font-family: "Noto Sans", sans-serif;
        font-size: 10rem;
        margin-left: 5rem;
        padding: 1rem;
    }

    .action-button {
        background-color: hsla(0,0%,35%,1);
        border-radius: 10px;
        color: hsla(0,0%,96%,1);
        padding: 1rem;
        margin-right: 10rem;
        margin-left: 5rem;
        margin-bottom: 1rem;
    }

    .service-status {
        background-color: hsla(0,0%,35%,0.8);
        border-radius: 10px;
        color: hsla(0,0%,96%,1);
        padding: 1rem;
        margin-right: 10rem;
        margin-left: 5rem;
        margin-bottom: 1rem;
    }

    .services {
        border-radius: 50px;
        background-color: hsla(0,0%,35%,0.8);

    }
</style>

<div class="main">
    <div class="sub-left">
        <div>
            <h1 class="welcome-text">Welcome.</h1>
        </div>
        <div class="actions">
            <ul>
                <li><div class="action-button">Some Action...</div></li>
                <li><div class="action-button">Some Action...</div></li>
                <li><div class="action-button">Some Action...</div></li>
                <li><div class="action-button">Some Action...</div></li>
            </ul>
        </div>
    </div>
    <div class="sub-right">
        <div class="services">
            <ul>
                <li><div class="service-status">Some Service...</div></li>
                <li><div class="service-status">Some Service...</div></li>
                <li><div class="service-status">Some Service...</div></li>
                <li><div class="service-status">Some Service...</div></li>
            </ul>
        </div>
    </div>
</div>