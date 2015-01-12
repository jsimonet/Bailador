use v6;
use Bailador;

get '/' => sub {
    '<form method="POST" action="/echo"><input name="text"><input type="submit"></form>'
    ~
    '<form method="GET" action="/echo"><input name="text"><input type="submit"></form>';
}

get '/echo' => sub {
    return 'echo via GET: ' ~ (request.params<text> // '');
}


post '/echo' => sub {
    return 'echo via POST: ' ~ (request.params<text>  // '');
}


baile;
