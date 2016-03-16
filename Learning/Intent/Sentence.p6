#!/usr/bin/env perl6
use v6;

class Sentence {
  has @.words;
  has %!wordCounts;
  has Bool $!extracted = False;

  method new ($sentence) {
    my @words = split(/\s+/, $sentence);
    return self.bless(:@words);
  }

  method extract() {
    %!wordCounts = ();
    for @.words -> $word {
      %!wordCounts{$word}++;
    }
    $!extracted = True;
  }

  method hasWord($word) {
    unless ($!extracted) {
      self.extract();
    }
    return %!wordCounts{$word}:exists;
  }

  method howMany($word) {
    unless ($!extracted) {
      self.extract();
    }
    if (%!wordCounts{$word}:exists) {
      return %!wordCounts{$word};
    } else {
      return 0;
    }
  }
}

class LPair {
  has Sentence $.phrase;
  has Str $.action;

  method new($phrase, $action) {
    return self.bless(:$phrase, :$action);
  }

  method hasWord($word) {
    return $.phrase.hasWord($word);
  }
}

class ID3 {
  has LPair @!data;
  has ID3 @!children;
  has Str $!split;

  method add(LPair $pair) {
    @!data.push($pair);
  }

  submethod getEntropy($word) {
  }

  submethod learnData() {
  }

}

sub MAIN {
  say "Hello world!";
}
