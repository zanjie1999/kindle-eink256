.class public final Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage$clickListener$1;
.super Ljava/lang/Object;
.source "HushpuppyUpsellDetector.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage$clickListener$1;->this$0:Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_5

    .line 267
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 272
    sget v0, Lcom/amazon/kindle/krl/R$id;->override_disabled:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$id;->always_show:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 274
    :cond_2
    sget v0, Lcom/amazon/kindle/krl/R$id;->always_hide:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 278
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage$clickListener$1;->this$0:Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->access$getPrefs$p(Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "WeblabOverride"

    if-nez v1, :cond_4

    .line 280
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 282
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    :goto_1
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    return-void
.end method
