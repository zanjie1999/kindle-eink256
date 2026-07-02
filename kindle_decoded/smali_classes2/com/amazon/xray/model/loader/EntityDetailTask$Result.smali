.class public Lcom/amazon/xray/model/loader/EntityDetailTask$Result;
.super Ljava/lang/Object;
.source "EntityDetailTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/loader/EntityDetailTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final entity:Lcom/amazon/xray/model/object/Entity;

.field private final entityTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/EntityType;",
            ">;"
        }
    .end annotation
.end field

.field private final excerptsTabLabel:Ljava/lang/String;

.field private final hasExcerpts:Z

.field private final hasImages:Z

.field private final showSpoilersDefault:Z


# direct methods
.method private constructor <init>(Lcom/amazon/xray/model/object/Entity;Ljava/util/List;ZZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/xray/model/object/Entity;",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/EntityType;",
            ">;ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->entity:Lcom/amazon/xray/model/object/Entity;

    .line 138
    iput-object p2, p0, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->entityTypes:Ljava/util/List;

    .line 139
    iput-boolean p3, p0, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->hasExcerpts:Z

    .line 140
    iput-boolean p4, p0, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->hasImages:Z

    .line 141
    iput-boolean p5, p0, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->showSpoilersDefault:Z

    .line 142
    iput-object p6, p0, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->excerptsTabLabel:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/model/object/Entity;Ljava/util/List;ZZZLjava/lang/String;Lcom/amazon/xray/model/loader/EntityDetailTask$1;)V
    .locals 0

    .line 108
    invoke-direct/range {p0 .. p6}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;-><init>(Lcom/amazon/xray/model/object/Entity;Ljava/util/List;ZZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEntity()Lcom/amazon/xray/model/object/Entity;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->entity:Lcom/amazon/xray/model/object/Entity;

    return-object v0
.end method

.method public getEntityTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/EntityType;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->entityTypes:Ljava/util/List;

    return-object v0
.end method

.method public getExcerptsTabLabel()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->excerptsTabLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getShowSpoilersDefault()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->showSpoilersDefault:Z

    return v0
.end method

.method public hasExcerpts()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->hasExcerpts:Z

    return v0
.end method

.method public hasImages()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->hasImages:Z

    return v0
.end method
