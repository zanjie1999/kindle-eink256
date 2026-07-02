.class public final enum Lcom/audible/mobile/downloader/NetworkError;
.super Ljava/lang/Enum;
.source "NetworkError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/downloader/NetworkError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/downloader/NetworkError;

.field public static final enum CONNECTING:Lcom/audible/mobile/downloader/NetworkError;

.field public static final enum ERROR_RESPONSE_CONTENT:Lcom/audible/mobile/downloader/NetworkError;

.field public static final enum ERROR_RESPONSE_HEADERS:Lcom/audible/mobile/downloader/NetworkError;

.field public static final enum ERROR_RESPONSE_HEADERS_FATAL:Lcom/audible/mobile/downloader/NetworkError;

.field public static final enum INVALID_URL:Lcom/audible/mobile/downloader/NetworkError;

.field public static final enum NONE:Lcom/audible/mobile/downloader/NetworkError;

.field public static final enum SETUP_ERROR:Lcom/audible/mobile/downloader/NetworkError;

.field public static final enum TIMEOUT:Lcom/audible/mobile/downloader/NetworkError;

.field public static final enum TOO_MANY_REDIRECTS:Lcom/audible/mobile/downloader/NetworkError;

.field public static final enum UPLOADING:Lcom/audible/mobile/downloader/NetworkError;


# instance fields
.field private final isFatal:Z

.field private final msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 14
    new-instance v0, Lcom/audible/mobile/downloader/NetworkError;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "INVALID_URL"

    const-string v4, "Invalid url"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/audible/mobile/downloader/NetworkError;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/downloader/NetworkError;->INVALID_URL:Lcom/audible/mobile/downloader/NetworkError;

    .line 15
    new-instance v0, Lcom/audible/mobile/downloader/NetworkError;

    const-string v3, "SETUP_ERROR"

    const-string v4, "Error setting up connection"

    invoke-direct {v0, v3, v1, v4, v1}, Lcom/audible/mobile/downloader/NetworkError;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/downloader/NetworkError;->SETUP_ERROR:Lcom/audible/mobile/downloader/NetworkError;

    .line 16
    new-instance v0, Lcom/audible/mobile/downloader/NetworkError;

    const/4 v3, 0x2

    const-string v4, "CONNECTING"

    const-string v5, "Error connecting to remote service"

    invoke-direct {v0, v4, v3, v5, v2}, Lcom/audible/mobile/downloader/NetworkError;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/downloader/NetworkError;->CONNECTING:Lcom/audible/mobile/downloader/NetworkError;

    .line 17
    new-instance v0, Lcom/audible/mobile/downloader/NetworkError;

    const/4 v4, 0x3

    const-string v5, "TOO_MANY_REDIRECTS"

    const-string v6, "Too many redirects"

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/audible/mobile/downloader/NetworkError;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/downloader/NetworkError;->TOO_MANY_REDIRECTS:Lcom/audible/mobile/downloader/NetworkError;

    .line 18
    new-instance v0, Lcom/audible/mobile/downloader/NetworkError;

    const/4 v5, 0x4

    const-string v6, "ERROR_RESPONSE_HEADERS"

    const-string v7, "Server reported an error in its headers"

    invoke-direct {v0, v6, v5, v7, v2}, Lcom/audible/mobile/downloader/NetworkError;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/downloader/NetworkError;->ERROR_RESPONSE_HEADERS:Lcom/audible/mobile/downloader/NetworkError;

    .line 19
    new-instance v0, Lcom/audible/mobile/downloader/NetworkError;

    const/4 v6, 0x5

    const-string v7, "ERROR_RESPONSE_HEADERS_FATAL"

    const-string v8, "Server reported a fatal error in its headers"

    invoke-direct {v0, v7, v6, v8, v1}, Lcom/audible/mobile/downloader/NetworkError;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/downloader/NetworkError;->ERROR_RESPONSE_HEADERS_FATAL:Lcom/audible/mobile/downloader/NetworkError;

    .line 20
    new-instance v0, Lcom/audible/mobile/downloader/NetworkError;

    const/4 v7, 0x6

    const-string v8, "ERROR_RESPONSE_CONTENT"

    const-string v9, "Error reading response content from server"

    invoke-direct {v0, v8, v7, v9, v2}, Lcom/audible/mobile/downloader/NetworkError;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/downloader/NetworkError;->ERROR_RESPONSE_CONTENT:Lcom/audible/mobile/downloader/NetworkError;

    .line 21
    new-instance v0, Lcom/audible/mobile/downloader/NetworkError;

    const/4 v8, 0x7

    const-string v9, "UPLOADING"

    const-string v10, "Error uploading content"

    invoke-direct {v0, v9, v8, v10, v2}, Lcom/audible/mobile/downloader/NetworkError;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/downloader/NetworkError;->UPLOADING:Lcom/audible/mobile/downloader/NetworkError;

    .line 22
    new-instance v0, Lcom/audible/mobile/downloader/NetworkError;

    const/16 v9, 0x8

    const-string v10, "NONE"

    const-string v11, "No error, just testing."

    invoke-direct {v0, v10, v9, v11, v2}, Lcom/audible/mobile/downloader/NetworkError;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/downloader/NetworkError;->NONE:Lcom/audible/mobile/downloader/NetworkError;

    .line 23
    new-instance v0, Lcom/audible/mobile/downloader/NetworkError;

    const/16 v10, 0x9

    const-string v11, "TIMEOUT"

    const-string v12, "Server taking too long to respond"

    invoke-direct {v0, v11, v10, v12, v2}, Lcom/audible/mobile/downloader/NetworkError;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/downloader/NetworkError;->TIMEOUT:Lcom/audible/mobile/downloader/NetworkError;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/audible/mobile/downloader/NetworkError;

    .line 13
    sget-object v12, Lcom/audible/mobile/downloader/NetworkError;->INVALID_URL:Lcom/audible/mobile/downloader/NetworkError;

    aput-object v12, v11, v2

    sget-object v2, Lcom/audible/mobile/downloader/NetworkError;->SETUP_ERROR:Lcom/audible/mobile/downloader/NetworkError;

    aput-object v2, v11, v1

    sget-object v1, Lcom/audible/mobile/downloader/NetworkError;->CONNECTING:Lcom/audible/mobile/downloader/NetworkError;

    aput-object v1, v11, v3

    sget-object v1, Lcom/audible/mobile/downloader/NetworkError;->TOO_MANY_REDIRECTS:Lcom/audible/mobile/downloader/NetworkError;

    aput-object v1, v11, v4

    sget-object v1, Lcom/audible/mobile/downloader/NetworkError;->ERROR_RESPONSE_HEADERS:Lcom/audible/mobile/downloader/NetworkError;

    aput-object v1, v11, v5

    sget-object v1, Lcom/audible/mobile/downloader/NetworkError;->ERROR_RESPONSE_HEADERS_FATAL:Lcom/audible/mobile/downloader/NetworkError;

    aput-object v1, v11, v6

    sget-object v1, Lcom/audible/mobile/downloader/NetworkError;->ERROR_RESPONSE_CONTENT:Lcom/audible/mobile/downloader/NetworkError;

    aput-object v1, v11, v7

    sget-object v1, Lcom/audible/mobile/downloader/NetworkError;->UPLOADING:Lcom/audible/mobile/downloader/NetworkError;

    aput-object v1, v11, v8

    sget-object v1, Lcom/audible/mobile/downloader/NetworkError;->NONE:Lcom/audible/mobile/downloader/NetworkError;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/audible/mobile/downloader/NetworkError;->$VALUES:[Lcom/audible/mobile/downloader/NetworkError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/audible/mobile/downloader/NetworkError;->msg:Ljava/lang/String;

    .line 30
    iput-boolean p4, p0, Lcom/audible/mobile/downloader/NetworkError;->isFatal:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/downloader/NetworkError;
    .locals 1

    .line 13
    const-class v0, Lcom/audible/mobile/downloader/NetworkError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/downloader/NetworkError;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/downloader/NetworkError;
    .locals 1

    .line 13
    sget-object v0, Lcom/audible/mobile/downloader/NetworkError;->$VALUES:[Lcom/audible/mobile/downloader/NetworkError;

    invoke-virtual {v0}, [Lcom/audible/mobile/downloader/NetworkError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/downloader/NetworkError;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/audible/mobile/downloader/NetworkError;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isFatal()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/NetworkError;->isFatal:Z

    return v0
.end method
