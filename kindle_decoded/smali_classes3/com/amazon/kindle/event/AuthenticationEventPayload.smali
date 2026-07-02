.class public Lcom/amazon/kindle/event/AuthenticationEventPayload;
.super Ljava/lang/Object;
.source "AuthenticationEventPayload.java"

# interfaces
.implements Lcom/amazon/kindle/event/IRedrivableEventPayload;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accountInfo:Lcom/amazon/kindle/services/authentication/IAccountInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kindle/event/AuthenticationEventPayload;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/event/AuthenticationEventPayload;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/authentication/IAccountInfo;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/kindle/event/AuthenticationEventPayload;->accountInfo:Lcom/amazon/kindle/services/authentication/IAccountInfo;

    return-void
.end method


# virtual methods
.method public getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/event/AuthenticationEventPayload;->accountInfo:Lcom/amazon/kindle/services/authentication/IAccountInfo;

    return-object v0
.end method

.method public getByteStream()Ljava/io/ByteArrayOutputStream;
    .locals 6

    const-string v0, "Could not create ByteArrayOutputStream. "

    .line 27
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 31
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    iget-object v2, p0, Lcom/amazon/kindle/event/AuthenticationEventPayload;->accountInfo:Lcom/amazon/kindle/services/authentication/IAccountInfo;

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 41
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-exception v2

    .line 44
    sget-object v3, Lcom/amazon/kindle/event/AuthenticationEventPayload;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-object v2, v3

    goto :goto_4

    :catchall_1
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_0
    if-eqz v3, :cond_0

    .line 37
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    .line 41
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 44
    :goto_2
    sget-object v3, Lcom/amazon/kindle/event/AuthenticationEventPayload;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_3
    throw v2

    :catch_3
    :goto_4
    if-eqz v2, :cond_1

    .line 37
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_6

    .line 41
    :cond_1
    :goto_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    .line 44
    :goto_6
    sget-object v3, Lcom/amazon/kindle/event/AuthenticationEventPayload;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    return-object v1
.end method

.method public restoreFrom(Ljava/io/ByteArrayInputStream;)V
    .locals 3

    const-string v0, "Could not restore from ByteArrayOutputStream. "

    .line 56
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/services/authentication/IAccountInfo;

    iput-object p1, p0, Lcom/amazon/kindle/event/AuthenticationEventPayload;->accountInfo:Lcom/amazon/kindle/services/authentication/IAccountInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    sget-object v1, Lcom/amazon/kindle/event/AuthenticationEventPayload;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 59
    sget-object v1, Lcom/amazon/kindle/event/AuthenticationEventPayload;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
