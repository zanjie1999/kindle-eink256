.class final Lcom/amazon/kindle/viewoptions/font/FontFamilyManager$onThemeChangeEvent$1;
.super Ljava/lang/Object;
.source "FontFamilyManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->onThemeChangeEvent(Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager$onThemeChangeEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager$onThemeChangeEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->access$getListView$p(Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;)Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v1, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->getFontFamilyInfos()Ljava/util/List;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->updateData(Ljava/util/List;)V

    .line 95
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager$onThemeChangeEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;

    invoke-static {v2, v1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->access$getSelectedIndex(Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;Ljava/util/List;)I

    move-result v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->setSelectedPosition(I)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
