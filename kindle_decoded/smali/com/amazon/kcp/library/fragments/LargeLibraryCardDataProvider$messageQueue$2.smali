.class final Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$messageQueue$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LargeLibraryCardDataProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;Lcom/amazon/kcp/home/widget/resume/ItemsCountChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/events/IMessageQueue;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$messageQueue$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$messageQueue$2;

    invoke-direct {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$messageQueue$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$messageQueue$2;->INSTANCE:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$messageQueue$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 2

    .line 55
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$messageQueue$2;->invoke()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    return-object v0
.end method
