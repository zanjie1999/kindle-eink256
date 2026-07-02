.class Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$1;
.super Ljava/lang/Object;
.source "MainPlayerNarrationSpeedButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->onClick(Lcom/amazon/kindle/krx/content/IBook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 170
    iput-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$1;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$1;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
