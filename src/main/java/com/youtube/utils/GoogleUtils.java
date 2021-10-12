package com.youtube.utils;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
//import com.sun.tools.javac.util.ClientCodeException;
import com.youtube.constants.GoogleInfo;
import com.youtube.models.Google;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.fluent.Form;
//import org.apache.http.client.fluent.Request;
import org.apache.http.client.fluent.Request;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.NoopHostnameVerifier;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.conn.ssl.TrustAllStrategy;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.conn.SingleClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.ssl.SSLContextBuilder;

//import javax.net.ssl.SSLContext;
//import javax.net.ssl.TrustManager;
//import javax.net.ssl.X509TrustManager;
import javax.servlet.ServletException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

public class GoogleUtils {

    public static String getToken(final String code) throws ClientProtocolException, IOException {
        Iterable<NameValuePair> form = Form.form()
                .add("grant_type", GoogleInfo.GOOGLE_GRANT_TYPE)
                .add("code", code)
                .add("client_id", GoogleInfo.GOOGLE_CLIENT_ID)
                .add("client_secret", GoogleInfo.GOOGLE_CLIENT_SECRET)
                .add("redirect_uri", GoogleInfo.GOOGLE_REDIRECT_URI)
                .build();
        System.out.println(form);
        HttpResponse response = Request.Post(GoogleInfo.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(form, Charset.lookupViaProviders("UTF-8"))
                .execute().returnResponse();

//        HttpResponse response = Request.Post(GoogleInfo.GOOGLE_LINK_GET_TOKEN)
//                        .bodyForm(form)
//                .execute().returnResponse();

//        java.net.http.HttpClient client =  java.net.http.HttpClient.newBuilder().build();
//
//        HttpPost httpPost = new HttpPost(GoogleInfo.GOOGLE_LINK_GET_TOKEN);
//        List<NameValuePair> params = new ArrayList<>();
//        params.add(new BasicNameValuePair("grant_type", GoogleInfo.GOOGLE_GRANT_TYPE));
//        params.add(new BasicNameValuePair("code", code));
//        params.add(new BasicNameValuePair("client_id", GoogleInfo.GOOGLE_CLIENT_ID));
//        params.add(new BasicNameValuePair("client_secret", GoogleInfo.GOOGLE_CLIENT_SECRET));
//        params.add(new BasicNameValuePair("redirect_uri", GoogleInfo.GOOGLE_REDIRECT_URI));
//        httpPost.setEntity(new UrlEncodedFormEntity(params, "UTF-8"));
//        HttpResponse response = (HttpResponse) client.send(httpPost, null);
//        client.close();

        System.out.println(response);

        System.out.println("hellp");
        return "hellp";

//        System.out.println(response);
//        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
//        return jobj.get("access_token").toString().replaceAll("\"", "");
    }

    public static Google getUserInfo(final String accessToken) throws ServletException, IOException {
//        String link = GoogleInfo.GOOGLE_LINK_GET_USER_INFO + accessToken;
//        String response = Request.Get(link).execute().returnContent().asString();
//        Google google = new Gson().fromJson(response, Google.class);
//        System.out.println(google);
//        return google;
        return null;
    }
}