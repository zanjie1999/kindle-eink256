.class public final enum Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;
.super Ljava/lang/Enum;
.source "IHushpuppyModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/model/read/IHushpuppyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProviderPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

.field public static final enum FULL_AUDIOBOOK_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

.field public static final enum LIBRARY_HEADPHONE_ACTION_BUTTON_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

.field public static final enum MATCHMAKER_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

.field public static final enum MAX_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

.field public static final enum MIN_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

.field public static final enum NEGATIVE_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

.field public static final enum PLAYABLE_LOCATION_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

.field public static final enum SAMPLE_AUDIOBOOK_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;


# instance fields
.field private final intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 129
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    const/4 v1, 0x0

    const-string v2, "NEGATIVE_PRIORITY"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->NEGATIVE_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    .line 133
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    const/4 v2, 0x1

    const-string v3, "MIN_PRIORITY"

    invoke-direct {v0, v3, v2, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->MIN_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    .line 137
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    const/4 v3, 0x2

    const/16 v4, 0x64

    const-string v5, "SAMPLE_AUDIOBOOK_PRIORITY"

    invoke-direct {v0, v5, v3, v4}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->SAMPLE_AUDIOBOOK_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    .line 141
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    const/4 v5, 0x3

    const-string v6, "MATCHMAKER_PRIORITY"

    invoke-direct {v0, v6, v5, v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->MATCHMAKER_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    .line 145
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    const/4 v6, 0x4

    const-string v7, "LIBRARY_HEADPHONE_ACTION_BUTTON_PRIORITY"

    const/16 v8, 0x32

    invoke-direct {v0, v7, v6, v8}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->LIBRARY_HEADPHONE_ACTION_BUTTON_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    .line 149
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    const/4 v7, 0x5

    const-string v8, "FULL_AUDIOBOOK_PRIORITY"

    invoke-direct {v0, v8, v7, v4}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->FULL_AUDIOBOOK_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    .line 153
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    const/4 v8, 0x6

    const-string v9, "PLAYABLE_LOCATION_PRIORITY"

    invoke-direct {v0, v9, v8, v4}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->PLAYABLE_LOCATION_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    .line 156
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    sget-object v4, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->FULL_AUDIOBOOK_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-virtual {v4}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue()I

    move-result v4

    const/4 v9, 0x7

    const-string v10, "MAX_PRIORITY"

    invoke-direct {v0, v10, v9, v4}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->MAX_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    const/16 v4, 0x8

    new-array v4, v4, [Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    .line 123
    sget-object v10, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->NEGATIVE_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    aput-object v10, v4, v1

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->MIN_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    aput-object v1, v4, v2

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->SAMPLE_AUDIOBOOK_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    aput-object v1, v4, v3

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->MATCHMAKER_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    aput-object v1, v4, v5

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->LIBRARY_HEADPHONE_ACTION_BUTTON_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    aput-object v1, v4, v6

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->FULL_AUDIOBOOK_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    aput-object v1, v4, v7

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->PLAYABLE_LOCATION_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    aput-object v1, v4, v8

    aput-object v0, v4, v9

    sput-object v4, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->$VALUES:[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    iput p3, p0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;
    .locals 1

    .line 123
    const-class v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;
    .locals 1

    .line 123
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->$VALUES:[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue:I

    return v0
.end method
