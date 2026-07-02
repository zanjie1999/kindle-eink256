.class public final enum Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
.super Ljava/lang/Enum;
.source "JsonFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

.field public static final enum ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

.field public static final enum WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

.field public static final enum WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

.field public static final enum WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

.field public static final enum WRITE_SORTED_MAP_ENTRIES:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 215
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const/4 v1, 0x0

    const-string v2, "ACCEPT_SINGLE_VALUE_AS_ARRAY"

    invoke-direct {v0, v2, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 221
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const/4 v2, 0x1

    const-string v3, "WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS"

    invoke-direct {v0, v3, v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 227
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const/4 v3, 0x2

    const-string v4, "WRITE_DATES_WITH_ZONE_ID"

    invoke-direct {v0, v4, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 234
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const/4 v4, 0x3

    const-string v5, "WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED"

    invoke-direct {v0, v5, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 241
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const/4 v5, 0x4

    const-string v6, "WRITE_SORTED_MAP_ENTRIES"

    invoke-direct {v0, v6, v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_SORTED_MAP_ENTRIES:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 209
    sget-object v7, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    aput-object v7, v6, v1

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    aput-object v1, v6, v2

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    aput-object v1, v6, v3

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    .locals 1

    .line 209
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    .locals 1

    .line 209
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    return-object v0
.end method
