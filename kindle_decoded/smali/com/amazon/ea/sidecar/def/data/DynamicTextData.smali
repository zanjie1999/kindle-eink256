.class public Lcom/amazon/ea/sidecar/def/data/DynamicTextData;
.super Ljava/lang/Object;
.source "DynamicTextData.java"


# instance fields
.field public final subtext:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/data/DynamicTextData;->text:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/data/DynamicTextData;->subtext:Ljava/lang/String;

    return-void
.end method
