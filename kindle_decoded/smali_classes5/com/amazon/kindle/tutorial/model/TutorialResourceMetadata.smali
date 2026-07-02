.class public Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;
.super Ljava/lang/Object;
.source "TutorialResourceMetadata.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final appExpanResourceName:Ljava/lang/String;

.field private final appExpanResourceSetName:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->type:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->fileName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->appExpanResourceSetName:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->appExpanResourceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->appExpanResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceSetName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->appExpanResourceSetName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->type:Ljava/lang/String;

    return-object v0
.end method
