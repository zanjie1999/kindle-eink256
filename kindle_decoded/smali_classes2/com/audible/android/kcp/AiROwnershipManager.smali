.class public Lcom/audible/android/kcp/AiROwnershipManager;
.super Ljava/lang/Object;
.source "AiROwnershipManager.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;


# instance fields
.field private final mKindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/audible/android/kcp/AiROwnershipManager;->mKindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public registerLibraryListener()V
    .locals 0

    return-void
.end method

.method public titleIsInLibrary(Lcom/audible/mobile/domain/Asin;Z)Z
    .locals 0

    return p2
.end method
