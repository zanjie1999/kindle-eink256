.class public final enum Lcom/amazon/android/widget/CommandBar$Position;
.super Ljava/lang/Enum;
.source "CommandBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/CommandBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/widget/CommandBar$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/widget/CommandBar$Position;

.field public static final enum END:Lcom/amazon/android/widget/CommandBar$Position;

.field public static final enum START:Lcom/amazon/android/widget/CommandBar$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lcom/amazon/android/widget/CommandBar$Position;

    const/4 v1, 0x0

    const-string v2, "START"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/widget/CommandBar$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/widget/CommandBar$Position;->START:Lcom/amazon/android/widget/CommandBar$Position;

    .line 38
    new-instance v0, Lcom/amazon/android/widget/CommandBar$Position;

    const/4 v2, 0x1

    const-string v3, "END"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/widget/CommandBar$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/widget/CommandBar$Position;->END:Lcom/amazon/android/widget/CommandBar$Position;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/android/widget/CommandBar$Position;

    .line 29
    sget-object v4, Lcom/amazon/android/widget/CommandBar$Position;->START:Lcom/amazon/android/widget/CommandBar$Position;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/android/widget/CommandBar$Position;->$VALUES:[Lcom/amazon/android/widget/CommandBar$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/widget/CommandBar$Position;
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/android/widget/CommandBar$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/widget/CommandBar$Position;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/widget/CommandBar$Position;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/android/widget/CommandBar$Position;->$VALUES:[Lcom/amazon/android/widget/CommandBar$Position;

    invoke-virtual {v0}, [Lcom/amazon/android/widget/CommandBar$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/widget/CommandBar$Position;

    return-object v0
.end method
