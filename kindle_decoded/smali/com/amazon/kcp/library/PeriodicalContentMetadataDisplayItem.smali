.class public final Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;
.super Lcom/amazon/kcp/library/ContentMetadataDisplayItem;
.source "PeriodicalContentMetadataDisplayItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;


# instance fields
.field private final displayReadState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final memberAsinCount:I

.field private final periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;->Companion:Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;ILcom/amazon/kindle/krx/content/IBook$ReadState;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 1

    const-string v0, "contentMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayReadState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "periodicalArguments"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryService"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    iput p2, p0, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;->memberAsinCount:I

    iput-object p3, p0, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;->displayReadState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    iput-object p4, p0, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;->periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

    iput-object p5, p0, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-void
.end method


# virtual methods
.method public getAsinCount()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;->memberAsinCount:I

    return v0
.end method

.method public getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;->displayReadState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    return-object v0
.end method

.method public refreshItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 4

    .line 71
    sget-object v0, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;->Companion:Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->getParentAsin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v3, p0, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;->periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;->newDisplayItem(Ljava/lang/String;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v0

    return-object v0
.end method
