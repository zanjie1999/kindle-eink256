.class Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$7;
.super Ljava/lang/Object;
.source "LibraryFragmentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->resetLibraryCursorCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 393
    invoke-static {}, Lcom/amazon/kcp/library/LibraryCursorFactory;->resetCachedResult()V

    return-void
.end method
