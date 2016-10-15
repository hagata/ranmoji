<html>
<head>
    <meta charset="UTF-8">
    <title>Random Emoji API</title>
</head>
<body>
    <h1>{{data.title}}</h1>
    <p class="description">
    Another random emoji generator! Press the generate button to get a random emoji.
    </p>
    <h2 class="emoji-field"></h2>
    <button class="emoji-generator">Random Emoji</button>

    <footer>
    This app has an API! GET random emojis delivered to your app.
    </footer>
<script>
    let randomButton = document.querySelector('.emoji-generator');
    let emojiField = document.querySelector('.emoji-field')

    function setEmoji(emoji) {
        emojiField.innerHTML = emoji;
    }

    function getRandom() {
        fetch('http://localhost:5000/emojis/api/v.1.0/')
        .then(response => {
            response.json().then(data => {
                console.log('response data', data.emoji)
                setEmoji(data.emoji)
            })
        });
    }

    function init() {
        bind_events();
        getRandom();
    }

    function bind_events() {
        randomButton.addEventListener('click', e => {
            e.preventDefault();
            getRandom();
        })
    }

    init();
</script>
</body>
</html>