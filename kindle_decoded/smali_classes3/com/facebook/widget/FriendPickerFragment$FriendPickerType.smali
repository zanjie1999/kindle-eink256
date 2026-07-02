.class public final enum Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;
.super Ljava/lang/Enum;
.source "FriendPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FriendPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendPickerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

.field public static final enum FRIENDS:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

.field public static final enum INVITABLE_FRIENDS:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

.field public static final enum TAGGABLE_FRIENDS:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;


# instance fields
.field private final requestIsCacheable:Z

.field private final requestPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 57
    new-instance v0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "FRIENDS"

    const-string v4, "/friends"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->FRIENDS:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    .line 58
    new-instance v0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    const-string v3, "TAGGABLE_FRIENDS"

    const-string v4, "/taggable_friends"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->TAGGABLE_FRIENDS:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    .line 59
    new-instance v0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    const/4 v3, 0x2

    const-string v4, "INVITABLE_FRIENDS"

    const-string v5, "/invitable_friends"

    invoke-direct {v0, v4, v3, v5, v2}, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->INVITABLE_FRIENDS:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    .line 56
    sget-object v5, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->FRIENDS:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    aput-object v5, v4, v2

    sget-object v2, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->TAGGABLE_FRIENDS:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    aput-object v2, v4, v1

    aput-object v0, v4, v3

    sput-object v4, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->$VALUES:[Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->requestPath:Ljava/lang/String;

    .line 66
    iput-boolean p4, p0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->requestIsCacheable:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;
    .locals 1

    .line 56
    const-class v0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;
    .locals 1

    .line 56
    sget-object v0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->$VALUES:[Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    invoke-virtual {v0}, [Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    return-object v0
.end method


# virtual methods
.method getRequestPath()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->requestPath:Ljava/lang/String;

    return-object v0
.end method

.method isCacheable()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->requestIsCacheable:Z

    return v0
.end method
