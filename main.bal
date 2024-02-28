import ballerina/http;

type ITunesSearchItem record {
    string collectionName;
    string collectionViewUrl;
};

type Album record {|
    string name;
    string url;
|}; 

type ITunesSearchResult record {
    ITunesSearchItem[] results;

};

service /pickagift on new http:Listener(8080) {
    resource function get albums(string artist) returns Album[]|error? {
        http:Client iTunes = check new ("https://itunes.apple.com");
        ITunesSearchResult search = check iTunes->get(searchUrl(artist));
        return from ITunesSearchItem i in search.results select {name: i.collectionName, url:i.collectionViewUrl};
    }

}

function searchUrl(string s) returns string {
    return "/search?term=" + s + "&entity=album&attribute=allArtistTerm";
}

