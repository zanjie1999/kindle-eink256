.class final Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;
.super Ljava/lang/Object;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultValue:Ljava/lang/Object;

.field final synthetic val$defaultValueType:Ljava/lang/Class;

.field final synthetic val$length:I


# direct methods
.method constructor <init>(Ljava/lang/Class;ILjava/lang/Object;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$defaultValueType:Ljava/lang/Class;

    iput p2, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$length:I

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$defaultValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$defaultValueType:Ljava/lang/Class;

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 168
    :cond_1
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$length:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    .line 170
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$length:I

    if-ge v2, v3, :cond_5

    .line 171
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$defaultValue:Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 172
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method
