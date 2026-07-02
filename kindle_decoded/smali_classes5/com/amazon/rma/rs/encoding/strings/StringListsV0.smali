.class public Lcom/amazon/rma/rs/encoding/strings/StringListsV0;
.super Ljava/lang/Object;
.source "StringListsV0.java"


# static fields
.field public static final INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    new-instance v1, Lcom/amazon/rma/rs/encoding/strings/StringLists;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/amazon/rma/rs/encoding/strings/StringLists;-><init>(ILjava/util/Map;)V

    sput-object v1, Lcom/amazon/rma/rs/encoding/strings/StringListsV0;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createStringListsForTest(ILjava/util/Map;)Lcom/amazon/rma/rs/encoding/strings/StringLists;
    .locals 1

    .line 32
    new-instance v0, Lcom/amazon/rma/rs/encoding/strings/StringLists;

    invoke-direct {v0, p0, p1}, Lcom/amazon/rma/rs/encoding/strings/StringLists;-><init>(ILjava/util/Map;)V

    return-object v0
.end method
