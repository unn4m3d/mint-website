component Home {
  property theme : Ui.Theme = Ui.defaultTheme()

  style hero {
    justify-content: center;
    flex-direction: column;
    background: #f7f7f7;
    align-items: center;
    display: flex;
    height: 500px;
  }

  style slogan {
    font-weight: normal;
    margin-top: 20px;
    font-size: 18px;
    color: #666;
  }

  style buttons {
    margin-top: 30px;

    & > a:hover {
      text-decoration: none;
    }

    & > * + * {
      margin-left: 15px;
    }
  }

  style base {
    color: #333;
  }

  style features {
    padding: 0 20px 50px 20px;
    max-width: 1040px;
    margin: 0 auto;

    & h3 {
      text-transform: uppercase;
      margin-bottom: 20px;
      margin-top: 50px;
      font-size: 26px;
    }
  }

  fun render : Html {
    <div::base>
      <div::hero>
        <Logo
          fill={theme.colors.primary.background}
          textFill="#222"/>

        <h2::slogan>
          <{ "A refreshing language for the font-end web." }>
        </h2>

        <div::buttons>
          <Ui.Link href="/install">
            <Ui.Button
              size={22}
              label="Install"/>
          </Ui.Link>

          <Ui.Link
            href="https://gdotdesign.gitbooks.io/mint/content/"
            target="_blank">

            <Ui.Button
              size={22}
              type="secondary"
              label="Learn"/>

          </Ui.Link>
        </div>
      </div>

      <Showcase/>

      <CallToAction text="Got your attention?">
        <Ui.Button
          onClick={\event : Html.Event => Navigation.navigate("/install")}
          label="Install Mint"
          size={20}
          type="secondary"/>
      </CallToAction>
    </div>
  }
}