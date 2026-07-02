.class public Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntry;
.super Ljava/lang/Object;
.source "WordWiseGlossEntry.java"


# instance fields
.field private difficulty:I

.field private isLowConfidence:Z

.field private start:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;IZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntry;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 22
    iput p2, p0, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntry;->difficulty:I

    .line 23
    iput-boolean p3, p0, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntry;->isLowConfidence:Z

    return-void
.end method


# virtual methods
.method public getDifficulty()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntry;->difficulty:I

    return v0
.end method

.method public getStart()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntry;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public isLowConfidence()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntry;->isLowConfidence:Z

    return v0
.end method
