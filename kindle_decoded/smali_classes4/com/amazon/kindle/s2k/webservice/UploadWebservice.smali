.class public Lcom/amazon/kindle/s2k/webservice/UploadWebservice;
.super Ljava/lang/Object;
.source "UploadWebservice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private filePath:Ljava/lang/String;

.field private isAborted:Z

.field private onError:Lcom/amazon/foundation/ICallback;

.field private onProgress:Lcom/amazon/foundation/ICallback;

.field private onSuccess:Lcom/amazon/foundation/ICallback;

.field private statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

.field private uploadThread:Ljava/lang/Thread;

.field private uploadUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->isAborted:Z

    .line 141
    new-instance v0, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    invoke-direct {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->isAborted:Z

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->uploadUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->onProgress:Lcom/amazon/foundation/ICallback;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->onSuccess:Lcom/amazon/foundation/ICallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->onError:Lcom/amazon/foundation/ICallback;

    return-object p0
.end method


# virtual methods
.method public doUpload(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/ICallback;)V
    .locals 4

    .line 146
    iput-object p4, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->onSuccess:Lcom/amazon/foundation/ICallback;

    .line 147
    iput-object p5, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->onProgress:Lcom/amazon/foundation/ICallback;

    .line 148
    iput-object p6, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->onError:Lcom/amazon/foundation/ICallback;

    const/16 p4, 0x10

    const-string p5, "InternalError"

    if-nez p3, :cond_1

    .line 152
    sget-object p1, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->TAG:Ljava/lang/String;

    const-string p2, "Received null UploadWebserviceStatusTracker..."

    invoke-static {p1, p4, p2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    invoke-virtual {p1, p5, p2}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->onError:Lcom/amazon/foundation/ICallback;

    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_9

    .line 165
    :try_start_0
    new-instance p6, Ljava/net/URL;

    invoke-direct {p6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    invoke-virtual {p6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->uploadUrl:Ljava/lang/String;

    const/4 p1, 0x4

    if-eqz p2, :cond_6

    const-string p4, ""

    .line 180
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    .line 182
    iput-object p2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->filePath:Ljava/lang/String;

    .line 183
    new-instance p2, Ljava/io/File;

    iget-object p4, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->filePath:Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-nez p4, :cond_3

    .line 187
    sget-object p2, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->TAG:Ljava/lang/String;

    const-string p3, "Error: File does not exist"

    invoke-static {p2, p1, p3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    const-string p2, "File does not exist"

    invoke-virtual {p1, p5, p2}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->onError:Lcom/amazon/foundation/ICallback;

    if-eqz p1, :cond_2

    .line 191
    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_2
    return-void

    .line 195
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result p2

    if-nez p2, :cond_5

    .line 197
    sget-object p2, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->TAG:Ljava/lang/String;

    const-string p3, "Error: Cannot read file"

    invoke-static {p2, p1, p3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    const-string p2, "Cannot read file"

    invoke-virtual {p1, p5, p2}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->onError:Lcom/amazon/foundation/ICallback;

    if-eqz p1, :cond_4

    .line 201
    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_4
    return-void

    .line 216
    :cond_5
    iput-object p3, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    const/4 p2, 0x0

    .line 217
    iput-boolean p2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->isAborted:Z

    .line 218
    sget-object p2, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Uploading file : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->filePath:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;-><init>(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->uploadThread:Ljava/lang/Thread;

    .line 220
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 208
    :cond_6
    sget-object p2, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->TAG:Ljava/lang/String;

    const-string p3, "Error: received incorrect filePath"

    invoke-static {p2, p1, p3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    const-string p2, "Received incorrect filePath"

    invoke-virtual {p1, p5, p2}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->onError:Lcom/amazon/foundation/ICallback;

    if-eqz p1, :cond_7

    .line 212
    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_7
    return-void

    :catch_0
    move-exception p1

    .line 169
    sget-object p2, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->TAG:Ljava/lang/String;

    const-string p3, "Received invalid upload url. Exiting..."

    invoke-static {p2, p4, p3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 171
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    invoke-virtual {p1, p5, p3}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->onError:Lcom/amazon/foundation/ICallback;

    if-eqz p1, :cond_8

    .line 174
    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_8
    return-void

    .line 224
    :cond_9
    sget-object p1, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->TAG:Ljava/lang/String;

    const-string p2, "Received null upload url..."

    invoke-static {p1, p4, p2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    const-string p2, "Received null upload url"

    invoke-virtual {p1, p5, p2}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->onError:Lcom/amazon/foundation/ICallback;

    if-eqz p1, :cond_a

    .line 228
    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_a
    return-void
.end method

.method public getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    return-object v0
.end method
