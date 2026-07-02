.class public Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;
.super Ljava/lang/Object;
.source "ITOCItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/ITOCItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageNumberCalcEvent"
.end annotation


# instance fields
.field private final pageNumberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final tocItem:Lcom/amazon/android/docviewer/ITOCItem;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/ITOCItem;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;->tocItem:Lcom/amazon/android/docviewer/ITOCItem;

    .line 57
    iput-object p2, p0, Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;->pageNumberMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getItem()Lcom/amazon/android/docviewer/ITOCItem;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;->tocItem:Lcom/amazon/android/docviewer/ITOCItem;

    return-object v0
.end method

.method public getPageNumberToPositionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;->pageNumberMap:Ljava/util/Map;

    return-object v0
.end method
