.class public Lcom/amazon/kcp/info/brochure/BrochureNoShareAction;
.super Ljava/lang/Object;
.source "BrochureNoShareAction.java"

# interfaces
.implements Lcom/amazon/kcp/info/brochure/IBrochureShareAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public share(Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;)V
    .locals 1

    .line 19
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Sharing is not supported for basic brochures"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
