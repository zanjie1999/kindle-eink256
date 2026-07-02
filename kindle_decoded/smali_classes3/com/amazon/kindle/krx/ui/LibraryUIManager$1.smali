.class Lcom/amazon/kindle/krx/ui/LibraryUIManager$1;
.super Ljava/lang/Object;
.source "LibraryUIManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/LibraryUIManager;->registerLibraryLeftNavProvider(Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/LibraryUIManager;

.field final synthetic val$libraryLeftNavProvider:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/LibraryUIManager;Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager$1;->this$0:Lcom/amazon/kindle/krx/ui/LibraryUIManager;

    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager$1;->val$libraryLeftNavProvider:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeftNavPanelRows(Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;",
            "Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation

    .line 160
    sget-object p1, Lcom/amazon/kindle/krx/ui/LibraryUIManager$2;->$SwitchMap$com$amazon$kindle$krx$providers$ILibraryLeftNavProviderV2$LeftNavSection:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 175
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager$1;->this$0:Lcom/amazon/kindle/krx/ui/LibraryUIManager;

    invoke-static {p1}, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->access$000(Lcom/amazon/kindle/krx/ui/LibraryUIManager;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to provide V1 substitute for leftNavSection enum "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    goto :goto_0

    .line 171
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->ABOUT:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    goto :goto_0

    .line 168
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->DISCOVER:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    goto :goto_0

    .line 165
    :cond_2
    sget-object p1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->LIBRARY:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    goto :goto_0

    .line 162
    :cond_3
    sget-object p1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->TOP_LEVEL:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    :goto_0
    if-nez p1, :cond_4

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 182
    :cond_4
    iget-object p2, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager$1;->val$libraryLeftNavProvider:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;->getLeftNavPanelRows(Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPriority()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager$1;->val$libraryLeftNavProvider:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;->getPriority()I

    move-result v0

    return v0
.end method
