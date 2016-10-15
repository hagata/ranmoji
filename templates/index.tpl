<html>
<head>
    <meta charset="UTF-8">
    <title>Random Emoji API</title>
    <style>
        body {
            background: #f5f5f5;
            color: #616161;
            font-family: Helvetica, Arial, sans-serif;
        }
        .app-content {
            align-items: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            margin: 0 auto;
            max-width: 400px;
        }

        .emoji-generator {
            background: #9575CD;
            border: none;
            box-shadow: 1px 2px 2px 0px rgba(0,0,0,0.5);
            color: #EDE7F6;
            font-size: 1.25rem;
            margin: 1rem;
            padding: 0.7rem 1.5rem;
            text-transform: uppercase;
        }

        .emoji-field {
            font-size: 7rem;
            line-height: 1;
            margin: 2rem 0 1rem;
        }

        .app-title {
            background: -webkit-linear-gradient(341deg, #512DA8 0%, #7E57C2 38%, #2196F3 100%);
            font-size: 2.2rem;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        footer {
            font-size: .875rem;
            margin: 0 auto;
            max-width: 420px;
            text-align: center;
        }
    </style>
</head>
<body>
<section class="app-content">
    <h1 class="app-title">{{data.title}}</h1>
    <p class="description">
    Another random emoji generator! Press the generate button to get a random emoji.
    </p>
    <h2 class="emoji-field"></h2>
    <button class="emoji-generator">Random Emoji</button>

</section>
<footer>
    <p class="footer-text">
        This app has an API! GET random emojis delivered to your app. See the project info on GitHub, <a href="https://github.com/hagata/ranmoji">https://github.com/hagata/ranmoji</a>.
    </p>
</footer>
<script>
    let randomButton = document.querySelector('.emoji-generator');
    let emojiField = document.querySelector('.emoji-field')

    function setEmoji(emoji) {
        emojiField.innerHTML = emoji;
    }

    function getRandom() {
        fetch('https://ranmoji.herokuapp.com/emojis/api/v.1.0/')
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
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-52972715-3', 'auto');
  ga('send', 'pageview');
</script>
</body>
</html>