.class Lcom/facebook/widget/LoginButton$LoginClickListener$1;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/LoginButton$LoginClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$openSession:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/widget/LoginButton$LoginClickListener;Lcom/facebook/Session;)V
    .locals 0

    .line 822
    iput-object p2, p0, Lcom/facebook/widget/LoginButton$LoginClickListener$1;->val$openSession:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 824
    iget-object p1, p0, Lcom/facebook/widget/LoginButton$LoginClickListener$1;->val$openSession:Lcom/facebook/Session;

    invoke-virtual {p1}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    return-void
.end method
