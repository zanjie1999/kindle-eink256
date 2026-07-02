.class Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy$1;
.super Lcom/amazon/kcp/library/fragments/LibraryFragmentClientAdapter;
.source "LibraryFragmentClientProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
