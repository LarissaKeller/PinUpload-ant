import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class PinterestService {

  constructor(
    private http: HttpClient,
  ) { }

  private env = environment;

  async getToken() {

    const params = new HttpParams();

    params.set('response_type', 'code');
    params.set('redirect_uri', this.env.redirectUri);
    params.set('client_id', this.env.clientId);
    params.set('scope', 'read_public,write_public');
    params.set('state', 'abc123');

    let token;

    try {
      const promise = await this.http.get(this.env.authUrl, {params: params});
      console.log('TOKEN: ' + token);
      promise.subscribe(
        ret => token = ret
      );
      return token;
    }
    catch(erro) {
      console.error(erro);
    }

  }

}
