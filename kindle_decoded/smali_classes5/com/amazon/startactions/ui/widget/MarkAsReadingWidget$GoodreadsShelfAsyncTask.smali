.class Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;
.super Landroid/os/AsyncTask;
.source "MarkAsReadingWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoodreadsShelfAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/amazon/ea/goodreadsshelf/service/ResponseData;",
        ">;"
    }
.end annotation


# static fields
.field private static final GET_LIBRARY_URL_FORMAT:Ljava/lang/String; = "https://kca.amazon.com/kca/library:amzn/%s/book:amzn/%s"


# instance fields
.field private final asin:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;Ljava/lang/String;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 382
    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->asin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/amazon/ea/goodreadsshelf/service/ResponseData;
    .locals 6

    .line 387
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 388
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "attempting to get goodreads shelf"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$800(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 392
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 393
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "profile link was null when trying to get goodreads shelf, ignoring."

    invoke-static {p1, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 399
    :cond_2
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$800(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "amazon"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 400
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object p1, p1, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 401
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->asin:Ljava/lang/String;

    aput-object p1, v1, v2

    const-string p1, "https://kca.amazon.com/kca/library:amzn/%s/book:amzn/%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 406
    :try_start_0
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 407
    new-instance v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v2, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    .line 408
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v2

    .line 409
    new-instance v3, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    invoke-direct {v3, v1, v2}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 410
    sget-object v1, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    .line 411
    invoke-virtual {v3, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v1

    .line 412
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 413
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "executing request for goodreads shelf"

    invoke-static {v2, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :try_start_1
    new-instance v1, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/ea/util/JSONUtil;->parseInputStreamToJsonObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;-><init>(ILjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p1, :cond_4

    .line 424
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 421
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to make connection to Goodreads due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_5

    .line 424
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-object p1, v0

    .line 419
    :catch_3
    :try_start_3
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "io exception occurred while trying to get goodreads shelf response"

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_5

    .line 424
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    :goto_1
    return-object v0

    :catchall_2
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 426
    :cond_6
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 375
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/amazon/ea/goodreadsshelf/service/ResponseData;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/amazon/ea/goodreadsshelf/service/ResponseData;)V
    .locals 7

    if-nez p1, :cond_1

    .line 433
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 434
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "response was null, ignoring."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->getResponseCode()I

    move-result v0

    .line 440
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_2

    .line 441
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received http response [statusCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 441
    invoke-static {v1, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v1, 0x194

    const-string v3, "no-shelf"

    const/4 v4, 0x0

    const-string/jumbo v5, "startactions.gr.shelf"

    if-ne v0, v1, :cond_5

    .line 450
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {v1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$900(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 451
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 452
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "discrepancy found from status code and local. rewriting local and refreshing ui"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_3
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->asin:Ljava/lang/String;

    invoke-static {v5, p1, v3}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setStringPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 457
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {p1, v4}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$400(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;Z)V

    :cond_4
    return-void

    :cond_5
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_7

    .line 464
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 465
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status code was not 200 OK, ignoring. [statusCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    .line 470
    :cond_7
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 471
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "parsing the response from goodreads into json"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_8
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_a

    .line 475
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 476
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "could not parse response into json object, ignoring."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    const-string/jumbo v0, "shelf"

    .line 481
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_c

    .line 483
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 484
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "no shelf data found in response, ignoring."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void

    :cond_c
    const-string v0, "name"

    .line 489
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 491
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "received shelf [name="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 495
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 496
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "empty or null shelf received [isMarked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {v1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$900(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_e
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->asin:Ljava/lang/String;

    invoke-static {v5, p1, v3}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setStringPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$900(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 503
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {p1, v4}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$400(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;Z)V

    :cond_f
    return-void

    :cond_10
    const-string v0, "currently-reading"

    .line 509
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 510
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 511
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compare server and memory [server="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", memory="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {v6}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$900(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_11
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {v1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$900(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Z

    move-result v1

    if-ne v0, v1, :cond_13

    .line 514
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 515
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "no discrepancy found, will not refresh ui"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void

    .line 520
    :cond_13
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 521
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "discrepancy found between server and memory, saving server state and refreshing ui"

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_14
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->asin:Ljava/lang/String;

    invoke-static {v5, v1, p1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setStringPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_16

    if-eqz v0, :cond_15

    .line 527
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$700(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)V

    goto :goto_0

    .line 529
    :cond_15
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {p1, v4}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$400(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;Z)V

    :cond_16
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 375
    check-cast p1, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;->onPostExecute(Lcom/amazon/ea/goodreadsshelf/service/ResponseData;)V

    return-void
.end method
