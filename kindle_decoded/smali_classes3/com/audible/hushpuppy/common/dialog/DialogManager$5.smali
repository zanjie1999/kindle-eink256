.class Lcom/audible/hushpuppy/common/dialog/DialogManager$5;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/dialog/DialogManager;->onUnsynchronizedContent(Lcom/audible/hushpuppy/common/misc/IVoidCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/dialog/DialogManager;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 160
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
