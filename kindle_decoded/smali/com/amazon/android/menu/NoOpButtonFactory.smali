.class public Lcom/amazon/android/menu/NoOpButtonFactory;
.super Ljava/lang/Object;
.source "NoOpButtonFactory.java"

# interfaces
.implements Lcom/amazon/android/menu/IButtonFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadButtons(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/util/Map;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/redding/ReddingActivity;",
            "Ljava/util/Map<",
            "Lcom/amazon/android/menu/CustomActionMenuButton;",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lcom/amazon/android/docviewer/KindleDocColorMode$Id;",
            ")I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
