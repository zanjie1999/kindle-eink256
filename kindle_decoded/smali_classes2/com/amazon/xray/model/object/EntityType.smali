.class public Lcom/amazon/xray/model/object/EntityType;
.super Ljava/lang/Object;
.source "EntityType.java"


# instance fields
.field private final iconId:I

.field private final id:I

.field private final label:Ljava/lang/String;

.field private final pluralLabel:Ljava/lang/String;

.field private final topEntityIds:[I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 33
    invoke-static {v0}, Lcom/amazon/xray/util/Validate;->notEmpty([Ljava/lang/CharSequence;)V

    .line 35
    iput p1, p0, Lcom/amazon/xray/model/object/EntityType;->id:I

    .line 36
    iput-object p2, p0, Lcom/amazon/xray/model/object/EntityType;->label:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/amazon/xray/model/object/EntityType;->pluralLabel:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/amazon/xray/model/object/EntityType;->iconId:I

    .line 39
    iput-object p5, p0, Lcom/amazon/xray/model/object/EntityType;->topEntityIds:[I

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/amazon/xray/model/object/EntityType;->iconId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/amazon/xray/model/object/EntityType;->id:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/xray/model/object/EntityType;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPluralLabel()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/xray/model/object/EntityType;->pluralLabel:Ljava/lang/String;

    return-object v0
.end method
