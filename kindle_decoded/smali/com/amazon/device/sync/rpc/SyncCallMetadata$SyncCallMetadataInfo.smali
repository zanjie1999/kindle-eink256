.class public final Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;
.super Ljava/lang/Object;
.source "SyncCallMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/rpc/SyncCallMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncCallMetadataInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMethod:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mResponse:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TResponseType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TResponseType;>;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;->mName:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;->mMethod:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;->mResponse:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;->mMethod:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;)Ljava/lang/Class;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;->mResponse:Ljava/lang/Class;

    return-object p0
.end method
