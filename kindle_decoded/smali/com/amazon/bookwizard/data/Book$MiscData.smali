.class Lcom/amazon/bookwizard/data/Book$MiscData;
.super Ljava/lang/Object;
.source "Book.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/data/Book;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiscData"
.end annotation


# instance fields
.field private reason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recommendedReason"
    .end annotation
.end field


# direct methods
.method static synthetic access$000(Lcom/amazon/bookwizard/data/Book$MiscData;)Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/amazon/bookwizard/data/Book$MiscData;->reason:Ljava/lang/String;

    return-object p0
.end method
