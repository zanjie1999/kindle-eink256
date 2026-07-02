.class public final synthetic Lorg/reflections/vfs/-$$Lambda$SystemDir$Er5wBtJvJ30QxFByy1AXirW4iSw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/vfs/-$$Lambda$SystemDir$Er5wBtJvJ30QxFByy1AXirW4iSw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/vfs/-$$Lambda$SystemDir$Er5wBtJvJ30QxFByy1AXirW4iSw;

    invoke-direct {v0}, Lorg/reflections/vfs/-$$Lambda$SystemDir$Er5wBtJvJ30QxFByy1AXirW4iSw;-><init>()V

    sput-object v0, Lorg/reflections/vfs/-$$Lambda$SystemDir$Er5wBtJvJ30QxFByy1AXirW4iSw;->INSTANCE:Lorg/reflections/vfs/-$$Lambda$SystemDir$Er5wBtJvJ30QxFByy1AXirW4iSw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lorg/reflections/vfs/SystemDir;->lambda$null$0(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method
