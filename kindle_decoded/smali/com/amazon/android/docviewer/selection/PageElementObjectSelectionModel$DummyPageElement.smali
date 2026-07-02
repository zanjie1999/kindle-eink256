.class Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;
.super Ljava/lang/Object;
.source "PageElementObjectSelectionModel.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IPageElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyPageElement"
.end annotation


# instance fields
.field private startPos:I


# direct methods
.method private constructor <init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 129
    iput p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;->startPos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;-><init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;I)I
    .locals 0

    .line 127
    iput p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;->startPos:I

    return p1
.end method


# virtual methods
.method public getCoveringRectangles()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEndId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getId()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;->startPos:I

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
