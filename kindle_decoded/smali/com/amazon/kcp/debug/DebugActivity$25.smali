.class final Lcom/amazon/kcp/debug/DebugActivity$25;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->getCustomColorsAlertDialog(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/app/Activity;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$twoPageUpCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0

    .line 1031
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$25;->val$twoPageUpCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1034
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    sget v0, Lcom/amazon/kindle/krl/R$id;->fitToWidthCheck:I

    if-ne p1, v0, :cond_0

    .line 1036
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$25;->val$twoPageUpCheck:Landroid/widget/CheckBox;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    return-void
.end method
