class AddOwnerToTask < ActiveRecord::Migration[6.1]
  def change
    #acá se cambió el user por owner(propietario) porque es más apropiado que una tarea tenga un propietario que un  usuario
    #y como se cambió a owner por user que no existe owner sino user
    #se crea un hash y una clave valor  que referencie de la tabla users y no haya error 
    #el index... es para decir que tenga un indice de búsqueda mucho más rápaido
    add_reference :tasks, :owner, null: false, foreign_key:  { to_table: :users }, index: true
  end
end
