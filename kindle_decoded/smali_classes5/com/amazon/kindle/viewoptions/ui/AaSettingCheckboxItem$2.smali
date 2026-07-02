.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem$2;
.super Ljava/lang/Object;
.source "AaSettingCheckboxItem.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZLjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->setChecked(Z)V

    return-void
.end method
