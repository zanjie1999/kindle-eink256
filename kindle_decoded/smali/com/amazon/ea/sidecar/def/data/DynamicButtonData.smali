.class public Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;
.super Ljava/lang/Object;
.source "DynamicButtonData.java"


# instance fields
.field public final buttonText:Ljava/lang/String;

.field public final buttonTextOnAction:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final textOnAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;->text:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;->textOnAction:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;->buttonText:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;->buttonTextOnAction:Ljava/lang/String;

    return-void
.end method
