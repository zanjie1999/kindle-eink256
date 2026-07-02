.class public Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;
.super Ljava/lang/Object;
.source "ContentUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/plugin/util/ContentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageLabel"
.end annotation


# instance fields
.field private fullLabel:Ljava/lang/String;

.field private label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 321
    invoke-static {v0}, Lcom/amazon/xray/util/Validate;->notNull([Ljava/lang/Object;)V

    .line 323
    iput-object p1, p0, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->label:Ljava/lang/String;

    .line 324
    iput-object p2, p0, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->fullLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFullLabel()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->fullLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->label:Ljava/lang/String;

    return-object v0
.end method
