.class public Lcom/amazon/kindle/model/sync/annotation/IBookData$Type;
.super Ljava/lang/Object;
.source "IBookData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/model/sync/annotation/IBookData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final MOBI:Lcom/amazon/kindle/model/sync/annotation/IBookData$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/kindle/model/sync/annotation/IBookData$Type;

    invoke-direct {v0}, Lcom/amazon/kindle/model/sync/annotation/IBookData$Type;-><init>()V

    sput-object v0, Lcom/amazon/kindle/model/sync/annotation/IBookData$Type;->MOBI:Lcom/amazon/kindle/model/sync/annotation/IBookData$Type;

    .line 18
    new-instance v0, Lcom/amazon/kindle/model/sync/annotation/IBookData$Type;

    invoke-direct {v0}, Lcom/amazon/kindle/model/sync/annotation/IBookData$Type;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
