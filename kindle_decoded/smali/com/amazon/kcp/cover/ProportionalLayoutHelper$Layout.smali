.class public final Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;
.super Ljava/lang/Object;
.source "ProportionalLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/ProportionalLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Layout"
.end annotation


# instance fields
.field public final authorTextSize:I

.field public final bottomMargin:I

.field public final horzMargin:I

.field public final titleTextSize:I

.field public final topMargin:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->horzMargin:I

    .line 91
    iput p2, p0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->topMargin:I

    .line 92
    iput p3, p0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->bottomMargin:I

    .line 93
    iput p4, p0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->titleTextSize:I

    .line 94
    iput p5, p0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->authorTextSize:I

    return-void
.end method
