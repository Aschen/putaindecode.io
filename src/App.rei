type action;

type state = {
  articles:
    Belt.Map.String.t(RequestStatus.t(Belt.Result.t(Post.t, Errors.t))),
  articleList:
    RequestStatus.t(Belt.Result.t(array(PostShallow.t), Errors.t)),
  podcasts:
    Belt.Map.String.t(RequestStatus.t(Belt.Result.t(Podcast.t, Errors.t))),
  podcastList:
    RequestStatus.t(Belt.Result.t(array(PodcastShallow.t), Errors.t)),
  home: RequestStatus.t(Belt.Result.t(Home.t, Errors.t)),
};

let default: state;

[@react.component]
let make:
  (~url: ReasonReact.Router.url, ~initialData: state=?, unit) => React.element;
