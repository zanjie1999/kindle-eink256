.class public Lcom/amazon/versioning/reader/ui/controller/BookUpdateLeftNavController;
.super Ljava/lang/Object;
.source "BookUpdateLeftNavController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private final leftNavRowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/reader/ui/controller/BookUpdateLeftNavController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateLeftNavController;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/ui/ILibraryUIManager;Lcom/amazon/kindle/krx/application/IApplicationManager;Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/reader/ui/controller/BookUpdateLeftNavController;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateLeftNavController;->libraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    .line 44
    iput-object p2, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateLeftNavController;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 45
    iput-object p3, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateLeftNavController;->appContext:Landroid/content/Context;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateLeftNavController;->leftNavRowList:Ljava/util/List;

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

    .line 66
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->BOOKS:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->LIBRARY:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    if-ne p2, v0, :cond_0

    .line 67
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateLeftNavController;->leftNavRowList:Ljava/util/List;

    return-object p1

    .line 68
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->FULL:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->DISCOVER:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    if-ne p2, p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateLeftNavController;->leftNavRowList:Ljava/util/List;

    return-object p1

    .line 71
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
