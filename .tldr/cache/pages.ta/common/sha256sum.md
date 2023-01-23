# sha256sum

> SHA256 மறையீட்டு சரிகாண்தொகையைக் கணி.
> மேலும் விவரத்திற்கு: <https://www.gnu.org/software/coreutils/manual/html_node/sha2-utilities.html>.

- கோப்பின் SHA256 சரிகாண்தொகையைக் கணி:

`sha256sum {{பாதை/டு/கோப்பு}}`

- பலக் கோப்புகளின் SHA256 சரிகாண்தொகையைக் கணி:

`sha256sum {{பாதை/டு/கோப்பு1}} {{பாதை/டு/கோப்பு2}}`

- SHA256 சரிகாண்தொகைகளைக் கணித்து கோப்பில் எழுது:

`sha256sum {{பாதை/டு/கோப்பு1}} {{பாதை/டு/கோப்பு2}} > {{பாதை/டு/கோப்பு.sha256}}`

- SHA256 சரிகாண்தொகைகளுடைய கோப்பைப் படித்து கோப்புகளைச் சரிபார்:

`sha256sum --check {{பாதை/டு/கோப்பு.sha256}}`

- பிழையுற்ற கோப்புகளை மட்டும் காட்டு:

`sha256sum --check --quiet {{பாதை/டு/கோப்பு.sha256}}`

- விடுபட்ட கோப்புகளைப் புறக்கணித்து, சரிபார்ப்பு தோல்வியுற்ற கோப்புகளுக்கான செய்தியை மட்டும் காட்டவும்:

`sha256sum --ignore-missing --check --quiet {{பாதை/டு/கோப்பு.sha256}}`