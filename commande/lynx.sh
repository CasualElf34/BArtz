#!/bin/bash

API_KEY="uAQvjNhFAn92Mfi5e73Nm2XsXppqzyS39xLOr9GB6INegeaZ24sWzcKwwumsGjhwazGp36rOqmT3BlbkFJ15QNqD6kkCBzlUuUu76_sHBH0gMpRuZteEGK2Rx5N-zX_QNHyHfmT9_N-rxLyultsthFdc20cA"
# Demande à l'utilisateur d'entrer une question
echo "Entrez votre question pour ChatGPT :"
read PROMPT

# Envoie la requête à l'API OpenAI
RESPONSE=$(curl -s -X POST https://api.openai.com/v1/engines/davinci-codex/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $API_KEY" \
  -d '{
    "prompt": "'"$PROMPT"'",
    "max_tokens": 150
  }')

# Affiche la réponse formatée
echo "Réponse de ChatGPT :"
echo $RESPONSE | jq '.choices[0].text'