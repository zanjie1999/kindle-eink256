.class Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;
.super Ljava/lang/Object;
.source "KRIFBookItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFBookItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KRFBookWrapper"
.end annotation


# instance fields
.field public final isSelfOwn:Z

.field public final krfBook:Lcom/amazon/krf/platform/KRFBook;


# direct methods
.method private constructor <init>(Lcom/amazon/krf/platform/KRFBook;Z)V
    .locals 0

    .line 1546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1547
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    .line 1548
    iput-boolean p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->isSelfOwn:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/krf/platform/KRFBook;ZLcom/amazon/kindle/rendering/KRIFBookItem$1;)V
    .locals 0

    .line 1542
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;-><init>(Lcom/amazon/krf/platform/KRFBook;Z)V

    return-void
.end method
