package dev.jguard.judge.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class VerdictDto {
    private boolean allowed;

    // role:contributor::repo__branch:*::push -> allow
    // role:contributor::repo-protected__branch:__MAIN::push -> deny
    // user:*::repo-private:*::read -> deny
}
