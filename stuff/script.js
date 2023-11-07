window.onload = async function() {
    response = await fetch("https://api.github.com/repos/AG123-321/simple-bot/commits/main")
    json = await response.json()
    alert(json['commit']['tree'].url)
    alert("hi")
}