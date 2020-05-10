# Уровень протоколирования устанавливается в глобальной
# переменной LOG LEVEL. Возможные варианты перечислены в порядке
# от самого строгого до наименее строгого: Error, Warning, Info  Debug

function logMsg() {
    message_level=$1
    message_itself=$2
    if [ $message_level -le $LOG_LEVEL ]; then
        case $message_level in
	    0) message_level_text="Error" ;;
	    1) message_level_text="Warning" ;;
	    2) message_level_text="Info" ;;
	    3) message_level_text="Debug" ;;
	    4) message_level_text="Other" ;;
	esac
	echo "${message_level_text}: $message_itself"
fi
}

