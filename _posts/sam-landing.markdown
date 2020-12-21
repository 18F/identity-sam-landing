---
title:  "SAM Landing"
date:   2020-12-17 14:21:21 -0500
---

<form action="{{ site.idp_host }}/openid_connect/authorize" method="get">
  <input name="client_id" value="{{ site.issuer }}" type="hidden" />
  <input name="acr_values" value="{{ site.acr_values }}" type="hidden" />
  <input name="redirect_uri" value="{{ site.redirect_uri }}" type="hidden" />
  <input name="nonce" value="{{ site.nonce }}" type="hidden" />
  <input name="state" value="{{ site.state }}" type="hidden" />
  <input name="code_challenge" value="{{ site.code_challenge }}" type="hidden" />
  <input name="code_challenge_method" value="S256" type="hidden" />
  <input name="response_type" value="code" type="hidden" />
  <input name="scope" value="openid" type="hidden" />
  <button>
    Go to Login.gov
  </button>
</form>
