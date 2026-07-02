.class public final Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$RequestFailure;
.super Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult;
.source "Mobi7LunaMultimediaManifestDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestFailure"
.end annotation


# instance fields
.field private final errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
    .locals 1

    const-string v0, "errorDescriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$RequestFailure;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-void
.end method


# virtual methods
.method public final getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$RequestFailure;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-object v0
.end method
