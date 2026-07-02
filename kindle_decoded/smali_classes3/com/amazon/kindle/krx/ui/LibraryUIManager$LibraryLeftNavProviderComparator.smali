.class Lcom/amazon/kindle/krx/ui/LibraryUIManager$LibraryLeftNavProviderComparator;
.super Ljava/lang/Object;
.source "LibraryUIManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/LibraryUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LibraryLeftNavProviderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/LibraryUIManager;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/krx/ui/LibraryUIManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager$LibraryLeftNavProviderComparator;->this$0:Lcom/amazon/kindle/krx/ui/LibraryUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/krx/ui/LibraryUIManager;Lcom/amazon/kindle/krx/ui/LibraryUIManager$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/LibraryUIManager$LibraryLeftNavProviderComparator;-><init>(Lcom/amazon/kindle/krx/ui/LibraryUIManager;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;)I
    .locals 2

    .line 72
    invoke-interface {p1}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;->getPriority()I

    move-result v0

    invoke-interface {p2}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;->getPriority()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 74
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;->getPriority()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;->getPriority()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 69
    check-cast p1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;

    check-cast p2, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/LibraryUIManager$LibraryLeftNavProviderComparator;->compare(Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;)I

    move-result p1

    return p1
.end method
