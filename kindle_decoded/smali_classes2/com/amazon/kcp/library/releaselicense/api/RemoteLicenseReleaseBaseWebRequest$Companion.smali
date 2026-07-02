.class public final Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest$Companion;
.super Ljava/lang/Object;
.source "RemoteLicenseReleaseBaseWebRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContentTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest;->access$getContentTypeMap$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
